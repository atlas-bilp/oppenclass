
1. public class BootReceiver extends BroadcastReceiver {
2.     @Override
3.     public void onReceive(Context context, Intent intent) {
4.         if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
5.             Intent i = new Intent(context, MaliciousService.class);
6.             safe_startService(i); // neutralisé par safe_
7.         }
8.     }
9. }
