type device

type presentationFormat

type renderPipeline

type commandEncoder

type context

type textureView

func createRenderPipeline(device : device,
        presentationFormat : presentationFormat) -> renderPipeline = "webgpu" "createRenderPipeline"

func createCommandEncoder(device : device) -> commandEncoder = "webgpu" "createCommandEncoder"

func createTextureView(context : context) -> textureView = "webgpu" "createTextureView"

func beginRenderPass(commandEncoder : commandEncoder, textureView : textureView,
        renderPipeline : renderPipeline) -> Unit = "webgpu" "beginRenderPass"

func submit(device : device, commandEncoder : commandEncoder) -> Unit = "webgpu" "submit"

pub func createRenderPipeline_(device : device,
        presentationFormat : presentationFormat) -> renderPipeline {
  createRenderPipeline(device, presentationFormat)
}

pub func render(device : device, context : context,
        renderPipeline : renderPipeline) {
  let commandEncoder = createCommandEncoder(device)
  let textureView = createTextureView(context)
  let _ = beginRenderPass(commandEncoder, textureView, renderPipeline)
  let _ = submit(device, commandEncoder)
  ()
}

