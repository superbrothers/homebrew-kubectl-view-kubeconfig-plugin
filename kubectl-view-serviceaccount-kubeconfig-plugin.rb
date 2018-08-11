class KubectlViewServiceaccountKubeconfigPlugin < Formula
  desc "kubectl plugin that show a kubeconfig to access the apiserver with a specified serviceaccount."
  homepage "https://github.com/superbrothers/kubectl-view-serviceaccount-kubeconfig-plugin"
  version "v1.1.0"
  url "https://github.com/superbrothers/kubectl-view-serviceaccount-kubeconfig-plugin/releases/download/#{version}/view-serviceaccount-kubeconfig-darwin-amd64.zip"
  sha256 "67db6838c3a832dde88eadee12c96e1b0f78599a63b15b5c7aa73a7b155500da"

  def install
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    Run the following commands in terminal:
      mkdir -p ~/.kube/plugins && \\
      rm -rf ~/.kube/plugins/kubectl-view-serviceaccount-kubeconfig-plugin && \\
      cp -RH $(brew --prefix kubectl-view-serviceaccount-kubeconfig-plugin) ~/.kube/plugins/
    EOS
  end
end
