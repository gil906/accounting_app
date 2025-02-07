interface AccountNode {
  name: string;
  value: number;
  children?: AccountNode[];
}

const netWorth: AccountNode = {
  name: 'Net Worth',
  value: 0,
  children: [
    {
      name: 'Assets',
      value: 10000,
      children: [
        {
          name: 'Cash',
          value: 500,
        },
        {
          name: 'Stocks',
          value: 1200,
        },
        {
          name: 'Bank 1',
          value: 3000,
        },
      ],
    },
    {
      name: 'User 1',
      value: 0,
      children: [
        {
          name: 'Income',
          value: 0,
        },
        {
          name: 'Bank 1',
          value: 1000,
        },
        {
          name: 'Bank 2',
          value: 2000,
        },
        {
          name: 'Stocks',
          value: 1500,
        },
      ],
    },
    {
      name: 'User 2',
      value: 0,
      children: [
        {
          name: 'Bank 1',
          value: 1000,
        },
        {
          name: 'Bank 2',
          value: 2000,
        },
        {
          name: 'Stocks',
          value: 1500,
        },
      ],
    },
  ],
};

function calculateTotal(node: AccountNode): number {
  let total = node.value;
  if (node.children) {
    for (const child of node.children) {
      total += calculateTotal(child);
    }
  }
  return total;
}

function printTree(node: AccountNode, indent = 0): void {
  const total = calculateTotal(node);
  console.log(`${' '.repeat(indent)}${node.name} ($${total})`);
  if (node.children) {
    for (const child of node.children) {
      printTree(child, indent + 2);
    }
  }
}

printTree(netWorth);