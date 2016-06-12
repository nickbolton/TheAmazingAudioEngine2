Pod::Spec.new do |s|
  s.name         = "TheAmazingAudioEngine2"
  s.version      = "0.0.1"
  s.summary      = "Core Audio, Cordially: A sophisticated framework for iOS audio applications, built so you don't have to."
  s.homepage     = "http://theamazingaudioengine.com"
  s.license      = 'zlib'
  s.author       = { "Michael Tyson" => "michael@atastypixel.com" }
  s.source       = { :git => "https://github.com/TheAmazingAudioEngine/TheAmazingAudioEngine.git", :tag => "0.0.1" }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'TheAmazingAudioEngine2/**/*.{h,m,c}'
  s.exclude_files = 'TheAmazingAudioEngine2/Modules/TPCircularBuffer'
  s.osx.exclude_files = 'TheAmazingAudioEngine2/Modules/Filters/AEReverbFilter.*'
  s.compiler_flags = '-DTPCircularBuffer=AECB',
                    '-D_TPCircularBufferInit=_AECBInit',
                    '-DTPCircularBufferCleanup=AECBClean',
                    '-DTPCircularBufferClear=AECBClear',
                    '-DTPCircularBufferSetAtomic=AECBSetAtomic',
                    '-DTPCircularBufferTail=AECBTail',
                    '-DTPCircularBufferConsume=AECBConsume',
                    '-DTPCircularBufferHead=AECBHead',
                    '-DTPCircularBufferProduce=AECBProduce',
                    '-DTPCircularBufferProduceBytes=AECBProduceBytes',
                    '-DTPCircularBufferPrepareEmptyAudioBufferList=AECBPrepareEmptyBL',
                    '-DTPCircularBufferPrepareEmptyAudioBufferListWithAudioFormat=AECBPrepareEmptyBLWithAF',
                    '-DTPCircularBufferProduceAudioBufferList=AECBProduceBL',
                    '-DTPCircularBufferCopyAudioBufferList=AECBCopyBL',
                    '-DTPCircularBufferNextBufferList=AECBNextBL',
                    '-DTPCircularBufferNextBufferListAfter=AECBNextBLAfter',
                    '-DTPCircularBufferConsumeNextBufferList=AECBConsumeBL',
                    '-DTPCircularBufferGetAvailableSpace=AECBGetAvailableSpace',
                    '-DTPCircularBufferConsumeNextBufferListPartial=AECBConsumeBLPartial',
                    '-DTPCircularBufferDequeueBufferListFrames=AECBDequeueBLFrames',
                    '-DTPCircularBufferPeek=AECBPeek',
                    '-DTPCircularBufferPeekContiguous=AECBPeekContiguous',
                    '-D_TPCircularBufferPeek=_AECBPeek'
  s.frameworks = 'AudioToolbox', 'Accelerate'
  s.requires_arc = true
end
