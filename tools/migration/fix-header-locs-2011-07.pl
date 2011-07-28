use strict;

use vars qw(%inc_translations);
BEGIN { %inc_translations = (
                             "NovaConfigPostProcessor.h" => "art/Framework/Art/NovaConfigPostProcessor.h",
                             "art/Framework/Core/DataViewImpl.h" => "art/Framework/Principal/DataViewImpl.h",
                             "art/Framework/Core/DelayedReader.h" => "art/Framework/Principal/DelayedReader.h",
                             "art/Framework/Core/Event.h" => "art/Framework/Principal/Event.h",
                             "art/Framework/Core/EventPrincipal.h" => "art/Framework/Principal/EventPrincipal.h",
                             "art/Framework/Core/FCPfwd.h" => "art/Framework/Principal/fwd.h",
                             "art/Framework/Core/Group.h" => "art/Persistency/Common/Group.h",
                             "art/Framework/Core/GroupQueryResult.h" => "art/Persistency/Common/GroupQueryResult.h",
                             "art/Framework/Core/LibraryManager.h" => "art/Utilities/LibraryManager.h",
                             "art/Framework/Core/MasterProductRegistry.h" => "art/Persistency/Provenance/MasterProductRegistry.h",
                             "art/Framework/Core/NoDelayedReader.h" => "art/Framework/Principal/NoDelayedReader.h",
                             "art/Framework/Core/NovaConfigPostProcessor.h" => "art/Framework/Art/NovaConfigPostProcessor.h",
                             "art/Framework/Core/Principal.h" => "art/Framework/Principal/Principal.h",
                             "art/Framework/Core/ProductMetaData.h" => "art/Persistency/Provenance/ProductMetaData.h",
                             "art/Framework/Core/Run.h" => "art/Framework/Principal/Run.h",
                             "art/Framework/Core/RunPrincipal.h" => "art/Framework/Principal/RunPrincipal.h",
                             "art/Framework/Core/Selector.h" => "art/Framework/Principal/Selector.h",
                             "art/Framework/Core/SelectorBase.h" => "art/Framework/Principal/SelectorBase.h",
                             "art/Framework/Core/SubRun.h" => "art/Framework/Principal/SubRun.h",
                             "art/Framework/Core/SubRunPrincipal.h" => "art/Framework/Principal/SubRunPrincipal.h",
                             "art/Framework/Core/TFileDirectory.h" => "art/Framework/Services/Optional/detail/TFileDirectory.h",
                             "art/Framework/Core/TH1AddDirectorySentry.h" => "art/Framework/Services/Optional/detail/TH1AddDirectorySentry.h",
                             "art/Framework/Core/UnscheduledHandler.h" => "art/Framework/Principal/UnscheduledHandler.h",
                             "art/Framework/Core/View.h" => "art/Framework/Principal/View.h",
                             "art/Framework/Core/artapp.h" => "art/Framework/Art/artapp.h",
                             "art/Framework/Core/detail/BranchIDListHelper.h" => "art/Persistency/Provenance/BranchIDListHelper.h",
                             "art/Framework/Core/detail/maybe_record_parents.h" => "art/Framework/Principal/detail/maybe_record_parents.h",
                             "art/Framework/Core/find_config.h" => "art/Framework/Art/find_config.h",
                             "art/Framework/Core/novaapp.h" => "art/Framework/Art/novaapp.h",
                             "art/Framework/Core/run_art.h" => "art/Framework/Art/run_art.h",
                             "art/Framework/Services/Optional/SimpleInteraction.h" => "art/Framework/Services/UserInteraction/SimpleInteraction.h",
                             "art/Framework/Services/Optional/UserInteraction.h" => "art/Framework/Services/UserInteraction/UserInteraction.h",
                             "art/Persistency/Common/View.h" => "art/Framework/Principal/View.h",
                             "art/Persistency/Provenance/Provenance.h" => "art/Persistency/Common/Provenance.h",
                             "novaapp.h" => "art/Framework/Art/novaapp.h",
                            );

      }
foreach my $inc (sort keys %inc_translations) {
  s&^(\s*#include\s+["<])\Q$inc\E([">].*)$&${1}$inc_translations{$inc}${2}& and last;
}

### Local Variables:
### mode: cperl
### End: