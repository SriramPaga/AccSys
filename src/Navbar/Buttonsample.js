import * as React from 'react';
import Button from '@mui/material/Button';
import Stack from '@mui/material/Stack';


export default function OutlinedButtons() {
  return (
    <Stack direction="row" spacing={3}>
      <Button variant="outlined">Primary</Button>
      <Button variant="outlined" disabled>
        Disabled
      </Button>
      <Button variant="outlined" href="PaymentForm">
        Link
      </Button>
      <Button colour="purple" variant="outlined" href="PaymentForm">
        link2
      </Button>
    </Stack>
    
  );
}



