// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

/**
Amazon Lightsail is the easiest way to get started with AWS for developers who just need virtual private servers. Lightsail includes everything you need to launch your project quickly - a virtual machine, SSD-based storage, data transfer, DNS management, and a static IP - for a low, predictable price. You manage those Lightsail servers through the Lightsail console or by using the API or command-line interface (CLI). For more information about Lightsail concepts and tasks, see the Lightsail Dev Guide. To use the Lightsail API or the CLI, you will need to use AWS Identity and Access Management (IAM) to generate access keys. For details about how to set this up, see the Lightsail Dev Guide.
*/
public struct Lightsail {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Lightsail_20161128",
            service: "lightsail",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-11-28",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [LightsailError.self]
        )
    }

    ///  Creates a block storage disk from a disk snapshot that can be attached to a Lightsail instance in the same Availability Zone (e.g., us-east-2a). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see Regions and Availability Zones in Lightsail.
    public func createDiskFromSnapshot(_ input: CreateDiskFromSnapshotRequest) throws -> CreateDiskFromSnapshotResult {
        return try client.send(operation: "CreateDiskFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches the specified instances from a Lightsail load balancer. This operation waits until the instances are no longer needed before they are detached from the load balancer.
    public func detachInstancesFromLoadBalancer(_ input: DetachInstancesFromLoadBalancerRequest) throws -> DetachInstancesFromLoadBalancerResult {
        return try client.send(operation: "DetachInstancesFromLoadBalancer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific domain recordset.
    public func getDomain(_ input: GetDomainRequest) throws -> GetDomainResult {
        return try client.send(operation: "GetDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific static IP.
    public func getStaticIp(_ input: GetStaticIpRequest) throws -> GetStaticIpResult {
        return try client.send(operation: "GetStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all operations. Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to GetOperations use the maximum (last) statusChangedAt value from the previous request.
    public func getOperations(_ input: GetOperationsRequest) throws -> GetOperationsResult {
        return try client.send(operation: "GetOperations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.
    public func rebootInstance(_ input: RebootInstanceRequest) throws -> RebootInstanceResult {
        return try client.send(operation: "RebootInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the TLS certificates that are associated with the specified Lightsail load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). You can have a maximum of 2 certificates associated with a Lightsail load balancer. One is active and the other is inactive.
    public func getLoadBalancerTlsCertificates(_ input: GetLoadBalancerTlsCertificatesRequest) throws -> GetLoadBalancerTlsCertificatesResult {
        return try client.send(operation: "GetLoadBalancerTlsCertificates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific domain entry.
    public func deleteDomainEntry(_ input: DeleteDomainEntryRequest) throws -> DeleteDomainEntryResult {
        return try client.send(operation: "DeleteDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the state of a specific instance. Works on one instance at a time.
    public func getInstanceState(_ input: GetInstanceStateRequest) throws -> GetInstanceStateResult {
        return try client.send(operation: "GetInstanceState", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to unpeer the Lightsail VPC from the user's default VPC.
    public func unpeerVpc(_ input: UnpeerVpcRequest) throws -> UnpeerVpcResult {
        return try client.send(operation: "UnpeerVpc", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific Amazon Lightsail instance, which is a virtual private server.
    public func getInstance(_ input: GetInstanceRequest) throws -> GetInstanceResult {
        return try client.send(operation: "GetInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the names of all active (not deleted) resources.
    public func getActiveNames(_ input: GetActiveNamesRequest) throws -> GetActiveNamesResult {
        return try client.send(operation: "GetActiveNames", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all valid regions for Amazon Lightsail. Use the include availability zones parameter to also return the availability zones in a region.
    public func getRegions(_ input: GetRegionsRequest) throws -> GetRegionsResult {
        return try client.send(operation: "GetRegions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a Boolean value indicating whether your Lightsail VPC is peered.
    public func isVpcPeered(_ input: IsVpcPeeredRequest) throws -> IsVpcPeeredResult {
        return try client.send(operation: "IsVpcPeered", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific key pair.
    public func getKeyPair(_ input: GetKeyPairRequest) throws -> GetKeyPairResult {
        return try client.send(operation: "GetKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a Lightsail load balancer and all its associated SSL/TLS certificates. Once the load balancer is deleted, you will need to create a new load balancer, create a new certificate, and verify domain ownership again.
    public func deleteLoadBalancer(_ input: DeleteLoadBalancerRequest) throws -> DeleteLoadBalancerResult {
        return try client.send(operation: "DeleteLoadBalancer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.
    public func createDomainEntry(_ input: CreateDomainEntryRequest) throws -> CreateDomainEntryResult {
        return try client.send(operation: "CreateDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Imports a public SSH key from a specific key pair.
    public func importKeyPair(_ input: ImportKeyPairRequest) throws -> ImportKeyPairResult {
        return try client.send(operation: "ImportKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.
    public func getInstanceMetricData(_ input: GetInstanceMetricDataRequest) throws -> GetInstanceMetricDataResult {
        return try client.send(operation: "GetInstanceMetricData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates sn SSH key pair.
    public func createKeyPair(_ input: CreateKeyPairRequest) throws -> CreateKeyPairResult {
        return try client.send(operation: "CreateKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.
    public func startInstance(_ input: StartInstanceRequest) throws -> StartInstanceResult {
        return try client.send(operation: "StartInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches a static IP from the Amazon Lightsail instance to which it is attached.
    public func detachStaticIp(_ input: DetachStaticIpRequest) throws -> DetachStaticIpResult {
        return try client.send(operation: "DetachStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all static IPs in the user's account.
    public func getStaticIps(_ input: GetStaticIpsRequest) throws -> GetStaticIpsResult {
        return try client.send(operation: "GetStaticIps", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detaches a stopped block storage disk from a Lightsail instance. Make sure to unmount any file systems on the device within your operating system before stopping the instance and detaching the disk.
    public func detachDisk(_ input: DetachDiskRequest) throws -> DetachDiskResult {
        return try client.send(operation: "DetachDisk", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all Amazon Lightsail virtual private servers, or instances.
    public func getInstances(_ input: GetInstancesRequest) throws -> GetInstancesResult {
        return try client.send(operation: "GetInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.
    public func getOperation(_ input: GetOperationRequest) throws -> GetOperationResult {
        return try client.send(operation: "GetOperation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all block storage disks in your AWS account and region. If you are describing a long list of disks, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
    public func getDisks(_ input: GetDisksRequest) throws -> GetDisksResult {
        return try client.send(operation: "GetDisks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the port states for a specific virtual private server, or instance.
    public func getInstancePortStates(_ input: GetInstancePortStatesRequest) throws -> GetInstancePortStatesResult {
        return try client.send(operation: "GetInstancePortStates", path: "/", httpMethod: "POST", input: input)
    }

    ///  Tries to peer the Lightsail VPC with the user's default VPC.
    public func peerVpc(_ input: PeerVpcRequest) throws -> PeerVpcResult {
        return try client.send(operation: "PeerVpc", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets operations for a specific resource (e.g., an instance or a static IP).
    public func getOperationsForResource(_ input: GetOperationsForResourceRequest) throws -> GetOperationsForResourceResult {
        return try client.send(operation: "GetOperationsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific instance snapshot.
    public func getInstanceSnapshot(_ input: GetInstanceSnapshotRequest) throws -> GetInstanceSnapshotResult {
        return try client.send(operation: "GetInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all load balancers in an account. If you are describing a long list of load balancers, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
    public func getLoadBalancers(_ input: GetLoadBalancersRequest) throws -> GetLoadBalancersResult {
        return try client.send(operation: "GetLoadBalancers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a Transport Layer Security (TLS) certificate to your load balancer. TLS is just an updated, more secure version of Secure Socket Layer (SSL). Once you create and validate your certificate, you can attach it to your load balancer. You can also use this API to rotate the certificates on your account. Use the AttachLoadBalancerTlsCertificate operation with the non-attached certificate, and it will replace the existing one and become the attached certificate.
    public func attachLoadBalancerTlsCertificate(_ input: AttachLoadBalancerTlsCertificateRequest) throws -> AttachLoadBalancerTlsCertificateResult {
        return try client.send(operation: "AttachLoadBalancerTlsCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific static IP from your account.
    public func releaseStaticIp(_ input: ReleaseStaticIpRequest) throws -> ReleaseStaticIpResult {
        return try client.send(operation: "ReleaseStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about health metrics for your Lightsail load balancer.
    public func getLoadBalancerMetricData(_ input: GetLoadBalancerMetricDataRequest) throws -> GetLoadBalancerMetricDataResult {
        return try client.send(operation: "GetLoadBalancerMetricData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all key pairs in the user's account.
    public func getKeyPairs(_ input: GetKeyPairsRequest) throws -> GetKeyPairsResult {
        return try client.send(operation: "GetKeyPairs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a specific virtual private server, or instance. You can use a snapshot to create a new instance that is based on that snapshot.
    public func createInstanceSnapshot(_ input: CreateInstanceSnapshotRequest) throws -> CreateInstanceSnapshotResult {
        return try client.send(operation: "CreateInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Lightsail load balancer. To learn more about deciding whether to load balance your application, see Configure your Lightsail instances for load balancing. You can create up to 5 load balancers per AWS Region in your account. When you create a load balancer, you can specify a unique name and port settings. To change additional load balancer settings, use the UpdateLoadBalancerAttribute operation.
    public func createLoadBalancer(_ input: CreateLoadBalancerRequest) throws -> CreateLoadBalancerResult {
        return try client.send(operation: "CreateLoadBalancer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified block storage disk. The disk must be in the available state (not attached to a Lightsail instance).  The disk may remain in the deleting state for several minutes. 
    public func deleteDisk(_ input: DeleteDiskRequest) throws -> DeleteDiskResult {
        return try client.send(operation: "DeleteDisk", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a block storage disk. You can use snapshots for backups, to make copies of disks, and to save data before shutting down a Lightsail instance. You can take a snapshot of an attached disk that is in use; however, snapshots only capture data that has been written to your disk at the time the snapshot command is issued. This may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the disk long enough to take a snapshot, your snapshot should be complete. Nevertheless, if you cannot pause all file writes to the disk, you should unmount the disk from within the Lightsail instance, issue the create disk snapshot command, and then remount the disk to ensure a consistent and complete snapshot. You may remount and use your disk while the snapshot status is pending.
    public func createDiskSnapshot(_ input: CreateDiskSnapshotRequest) throws -> CreateDiskSnapshotResult {
        return try client.send(operation: "CreateDiskSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a domain recordset after it is created.
    public func updateDomainEntry(_ input: UpdateDomainEntryRequest) throws -> UpdateDomainEntryResult {
        return try client.send(operation: "UpdateDomainEntry", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a static IP address to a specific Amazon Lightsail instance.
    public func attachStaticIp(_ input: AttachStaticIpRequest) throws -> AttachStaticIpResult {
        return try client.send(operation: "AttachStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of available instance images, or blueprints. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.
    public func getBlueprints(_ input: GetBlueprintsRequest) throws -> GetBlueprintsResult {
        return try client.send(operation: "GetBlueprints", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all instance snapshots for the user's account.
    public func getInstanceSnapshots(_ input: GetInstanceSnapshotsRequest) throws -> GetInstanceSnapshotsResult {
        return try client.send(operation: "GetInstanceSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance.
    public func getInstanceAccessDetails(_ input: GetInstanceAccessDetailsRequest) throws -> GetInstanceAccessDetailsResult {
        return try client.send(operation: "GetInstanceAccessDetails", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a block storage disk that can be attached to a Lightsail instance in the same Availability Zone (e.g., us-east-2a). The disk is created in the regional endpoint that you send the HTTP request to. For more information, see Regions and Availability Zones in Lightsail.
    public func createDisk(_ input: CreateDiskRequest) throws -> CreateDiskResult {
        return try client.send(operation: "CreateDisk", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches one or more Lightsail instances to a load balancer. After some time, the instances are attached to the load balancer and the health check status is available.
    public func attachInstancesToLoadBalancer(_ input: AttachInstancesToLoadBalancerRequest) throws -> AttachInstancesToLoadBalancerResult {
        return try client.send(operation: "AttachInstancesToLoadBalancer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified domain recordset and all of its domain records.
    public func deleteDomain(_ input: DeleteDomainRequest) throws -> DeleteDomainResult {
        return try client.send(operation: "DeleteDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the specified attribute for a load balancer. You can only update one attribute at a time.
    public func updateLoadBalancerAttribute(_ input: UpdateLoadBalancerAttributeRequest) throws -> UpdateLoadBalancerAttributeResult {
        return try client.send(operation: "UpdateLoadBalancerAttribute", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified disk snapshot. When you make periodic snapshots of a disk, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the disk.
    public func deleteDiskSnapshot(_ input: DeleteDiskSnapshotRequest) throws -> DeleteDiskSnapshotResult {
        return try client.send(operation: "DeleteDiskSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all domains in the user's account.
    public func getDomains(_ input: GetDomainsRequest) throws -> GetDomainsResult {
        return try client.send(operation: "GetDomains", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a domain resource for the specified domain (e.g., example.com).
    public func createDomain(_ input: CreateDomainRequest) throws -> CreateDomainResult {
        return try client.send(operation: "CreateDomain", path: "/", httpMethod: "POST", input: input)
    }

    ///  Closes the public ports on a specific Amazon Lightsail instance.
    public func closeInstancePublicPorts(_ input: CloseInstancePublicPortsRequest) throws -> CloseInstancePublicPortsResult {
        return try client.send(operation: "CloseInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific snapshot of a virtual private server (or instance).
    public func deleteInstanceSnapshot(_ input: DeleteInstanceSnapshotRequest) throws -> DeleteInstanceSnapshotResult {
        return try client.send(operation: "DeleteInstanceSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Allocates a static IP address.
    public func allocateStaticIp(_ input: AllocateStaticIpRequest) throws -> AllocateStaticIpResult {
        return try client.send(operation: "AllocateStaticIp", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name.
    public func attachDisk(_ input: AttachDiskRequest) throws -> AttachDiskResult {
        return try client.send(operation: "AttachDisk", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a specific Amazon Lightsail instance that is currently running.
    public func stopInstance(_ input: StopInstanceRequest) throws -> StopInstanceResult {
        return try client.send(operation: "StopInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Downloads the default SSH key pair from the user's account.
    public func downloadDefaultKeyPair(_ input: DownloadDefaultKeyPairRequest) throws -> DownloadDefaultKeyPairResult {
        return try client.send(operation: "DownloadDefaultKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates one or more Amazon Lightsail virtual private servers, or instances.
    public func createInstances(_ input: CreateInstancesRequest) throws -> CreateInstancesResult {
        return try client.send(operation: "CreateInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.
    public func createInstancesFromSnapshot(_ input: CreateInstancesFromSnapshotRequest) throws -> CreateInstancesFromSnapshotResult {
        return try client.send(operation: "CreateInstancesFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified Lightsail load balancer.
    public func getLoadBalancer(_ input: GetLoadBalancerRequest) throws -> GetLoadBalancerResult {
        return try client.send(operation: "GetLoadBalancer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or instance).
    public func getBundles(_ input: GetBundlesRequest) throws -> GetBundlesResult {
        return try client.send(operation: "GetBundles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific block storage disk snapshot.
    public func getDiskSnapshot(_ input: GetDiskSnapshotRequest) throws -> GetDiskSnapshotResult {
        return try client.send(operation: "GetDiskSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds public ports to an Amazon Lightsail instance.
    public func openInstancePublicPorts(_ input: OpenInstancePublicPortsRequest) throws -> OpenInstancePublicPortsResult {
        return try client.send(operation: "OpenInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request.
    public func putInstancePublicPorts(_ input: PutInstancePublicPortsRequest) throws -> PutInstancePublicPortsResult {
        return try client.send(operation: "PutInstancePublicPorts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific SSH key pair.
    public func deleteKeyPair(_ input: DeleteKeyPairRequest) throws -> DeleteKeyPairResult {
        return try client.send(operation: "DeleteKeyPair", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an SSL/TLS certificate associated with a Lightsail load balancer.
    public func deleteLoadBalancerTlsCertificate(_ input: DeleteLoadBalancerTlsCertificateRequest) throws -> DeleteLoadBalancerTlsCertificateResult {
        return try client.send(operation: "DeleteLoadBalancerTlsCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specific Amazon Lightsail virtual private server, or instance.
    public func deleteInstance(_ input: DeleteInstanceRequest) throws -> DeleteInstanceResult {
        return try client.send(operation: "DeleteInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Lightsail load balancer TLS certificate. TLS is just an updated, more secure version of Secure Socket Layer (SSL).
    public func createLoadBalancerTlsCertificate(_ input: CreateLoadBalancerTlsCertificateRequest) throws -> CreateLoadBalancerTlsCertificateResult {
        return try client.send(operation: "CreateLoadBalancerTlsCertificate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a specific block storage disk.
    public func getDisk(_ input: GetDiskRequest) throws -> GetDiskResult {
        return try client.send(operation: "GetDisk", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all block storage disk snapshots in your AWS account and region. If you are describing a long list of disk snapshots, you can paginate the output to make the list more manageable. You can use the pageToken and nextPageToken values to retrieve the next items in the list.
    public func getDiskSnapshots(_ input: GetDiskSnapshotsRequest) throws -> GetDiskSnapshotsResult {
        return try client.send(operation: "GetDiskSnapshots", path: "/", httpMethod: "POST", input: input)
    }


}