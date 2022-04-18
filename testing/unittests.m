function unittests()
%     test_import_events_files
    test_import_chanlocs_files
    
    function test_import_events_files()
        EEG = pop_loadset('./data/sub-044_task-AuditoryVisualShift_run-01_eeg.set');
        [EEG, ~, ~, ~]= eeg_importeventsfiles(EEG, './data/sub-044_task-AuditoryVisualShift_run-01_events.tsv', 'eventDescFile', './data/sub-044_task-AuditoryVisualShift_run-01_events.json');
    end
    
    function test_import_chanlocs_files()
        EEG = pop_loadset('./data/sub-044_task-AuditoryVisualShift_run-01_eeg.set');
        [EEG, ~, ~]= eeg_importchanlocs(EEG, './data/sub-044_task-AuditoryVisualShift_run-01_channels.tsv', './data/sub-044_task-AuditoryVisualShift_run-01_electrodes.tsv');
    end
end