#!/bin/sh
set -e

POSTGRES_USER="${POSTGRES_USER:-postgres}"

# Wait and seed Med_FactorUsersDB
echo "⏳ Waiting for Med_FactorUsersDB.roles..."
until psql -h postgres -U "$POSTGRES_USER" -d Med_FactorUsersDB -c '\dt public.roles' | grep -q roles; do
  sleep 1
done
echo "✅ roles table ready. Seeding..."
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorUsersDB -f /postgres-init/roles.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorUsersDB -f /postgres-init/users.sql

# Wait and seed Med_FactorContractDB
echo "⏳ Waiting for Med_FactorContractDB.statut_contrat..."
until psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -c '\dt public.statut_contrat' | grep -q statut_contrat; do
  sleep 1
done
echo "✅ statut_contrat table ready. Seeding..."
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/status_contrat.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_devise.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_comm.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_event.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_doc_remise.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_doc_contrat.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_event.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/x_type_factoring.sql
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorContractDB -f /postgres-init/y_tmm.sql

# Wait and seed Med_FactorDB
echo "⏳ Waiting for Med_FactorDB.x_type_piece_identité..."
until psql -h postgres -U "$POSTGRES_USER" -d Med_FactorDB -c '\dt public."x_type_piece_identité"' | grep -q x_type_piece_identité; do
  sleep 1
done
echo "✅ x_type_piece_identité table ready. Seeding..."
psql -h postgres -U "$POSTGRES_USER" -d Med_FactorDB -f /postgres-init/x_type_piece_id.sql

echo "🎉 All seed data inserted successfully!"
