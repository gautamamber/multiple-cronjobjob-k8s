import argparse

def main():
    parser = argparse.ArgumentParser(description="Process tenant ID.")
    parser.add_argument('--tenant', type=str, required=True, help='Tenant ID')
    args = parser.parse_args()

    tenant_id = args.tenant
    print(f"Processing tenant: {tenant_id}")

if __name__ == '__main__':
    main()
