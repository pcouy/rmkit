#include "fb/fb.h"
#ifdef KOBO
#include "../shared/proc.h" // Needed to prevent nickel from grabbing inputs
#endif
#include "input/input.h"
#include "util/signals.h"
#include "ui/ui.h"
#include "init.h"

#ifdef RMKIT_BUILD
def main():
  pass
#endif
