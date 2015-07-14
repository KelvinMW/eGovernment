ALTER TABLE eg_action ADD COLUMN application BIGINT;
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'wtms') WHERE contextroot='wtms';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'egi') WHERE contextroot='egi';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'eis') WHERE contextroot='eis';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'pgr') WHERE contextroot='pgr';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'egf') WHERE contextroot='EGF';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'collection') WHERE contextroot='collection';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'bpa') WHERE contextroot='bpa';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'ptis') WHERE contextroot='ptis';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'egassets') WHERE contextroot='egassets';
UPDATE eg_action SET application = (SELECT id FROM eg_module md WHERE md.parentmodule IS NULL AND md.contextroot = 'portal') WHERE contextroot='portal';
ALTER TABLE eg_action ALTER COLUMN application SET NOT NULL;