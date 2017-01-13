MongooseIM provides a wide range of pluggable and configurable modules, that implement various features such as XEPs. For example `mod_muc` for Multi-User Chat (group chat), `mod_mam` for Message Archive Management, `mod_stream_management` for stanza acknowledgements and stream resumption, and `mod_websockets`. This modules architecture provides a great flexibility for everyday operations and feature development.

A module configuration generally looks like:
```
  {mod_muc, [
             {host, "muc.@HOST@"},
             {access, muc},
             {access_create, muc_create}
            ]},
```

## Module list
Some of the modules feature an `iqdisc` parameter. It defines the method of handling incoming IQ stanzas. Please refer to [[IQ handlers]] for more information. Valid values: `no_queue`, `one_queue`, `{queues, N}`, `parallel`. Default: `one_queue`.

### [mod_admin_extra](../modules/mod_admin_extra.md)
Significantly extends the `mongooseimctl` script capabilities.

### [mod_adhoc](../modules/mod_adhoc.md)
Implements [XEP-0050: Ad-Hoc Commands](http://xmpp.org/extensions/xep-0050.html) for advertising and executing application-specific commands, such as those related to a configuration workflow, using [XEP-0004: Data Forms](http://xmpp.org/extensions/xep-0004.html) in order to structure the information exchange. This is extremely useful for use cases such as remote administration, user engagement via polls, and ChatBots.

### [mod_amp](../modules/mod_amp.md)
Implements a subset of [XEP-0079: Advanced Message Processing](http://xmpp.org/extensions/xep-0079.html) functionality, that enables entities to request, and servers to perform, advanced processing of XMPP message stanzas, including reliable data transport, time-sensitive delivery, and expiration of transient messages.

### [mod_aws_sns](../modules/mod_aws_sns.md)
Allows sending online/offline notifications, chat and groupchat messages as events to [Amazon Simple Notification Service](https://aws.amazon.com/sns/).

### [mod_blocking](../modules/mod_blocking.md)
Implements [XEP-0191: Blocking Command](http://xmpp.org/extensions/xep-0191.html), a simplified interface to privacy lists.

### [mod_bosh](../modules/mod_bosh.md)
Allows users to connect to MongooseIM using BOSH (Bidirectional-streams Over Synchronous HTTP), the HTTP long-polling technique described in [XEP-0124: Bidirectional-streams Over Synchronous HTTP (BOSH)](http://xmpp.org/extensions/xep-0124.html) and [XEP-0206: XMPP Over BOSH](http://xmpp.org/extensions/xep-0206.html).

### [mod_carboncopy](../modules/mod_carboncopy.md)
Implements [XEP-0280: Message Carbons](http://xmpp.org/extensions/xep-0280.html), in order to keep all IM clients for a user engaged in a real-time conversation, by carbon-copying all inbound and outbound messages to all interested resources (Full JIDs).

### [mod_disco](../modules/mod_disco.md)
Implements [XEP-0030: Service Discovery](http://xmpp.org/extensions/xep-0030.html) for discovering information (capabilities, protocols, features) about other XMPP entities.

### [mod_http_notification](../modules/mod_http_notification.md)
Enables forwarding events to an external HTTP service, such as messages or presences to mobile/SMS/email push service, big data, or analytics service.

### [mod_last](../modules/mod_last.md)
Implements [XEP-0012: Last Activity)](http://xmpp.org/extensions/xep-0012.html) for communicating information about the last activity associated with an XMPP entity (most recent presence information from an offline contact).

### [mod_mam](../modules/mod_mam.md)
Implements [XEP-0313: Message Archive Management](http://xmpp.org/extensions/attic/xep-0313.html) ([current version](http://xmpp.org/extensions/xep-0313.html)), that defines a protocol to query and control an archive of messages stored on a server.

### [mod_muc](../modules/mod_muc.md)
Implements [XEP-0045: Multi-User Chat)](http://xmpp.org/extensions/xep-0045.html), for a featureful multi-user text chat (group chat), whereby multiple XMPP users can exchange messages in the context of a chat room. It is tightly coupled to users' presences in chat rooms.

### [mod_muc_log](../modules/mod_muc_log.md)
Implements a logging subsystem for [mod_muc].

### [mod_muc_light](../modules/mod_muc_light.md)
Implements [XEP Multi-User Chat Light](https://github.com/xsf/xeps/pull/118) (still being reviewed by XMPP community).

### [mod_offline](../modules/mod_offline.md)
Provides offline messages storage that is compliant with [XEP-0160: Best Practices for Handling Offline Messages)](http://xmpp.org/extensions/xep-0160.html).

### [mod_privacy](../modules/mod_privacy.md)
This module implements [XEP-0016: Privacy Lists)](http://xmpp.org/extensions/xep-0016.html), for enabling or disabling communication with other entities on a network.

### [mod_private](../modules/mod_private.md)
Implements [XEP-0049 (Private XML Storage)](http://xmpp.org/extensions/xep-0049.html) to store and query private user data in XML format.

### [mod_register](../modules/mod_register.md)
Implements [XEP-0077: In-Band Registration)](http://xmpp.org/extensions/xep-0077.html), that enables to create an account and change password once connected. This does not provide a solution to the forgotten password use case, via SMS or email.

### [mod_roster](../modules/mod_roster.md)
Roster support, specified in [RFC 6121](http://xmpp.org/rfcs/rfc6121.html). Includes support for [XEP-0237: Roster Versioning](http://xmpp.org/extensions/xep-0237.html).

### [mod_shared_roster_ldap](../modules/mod_shared_roster_ldap.md)
This module, when enabled, will inject roster entries fetched from LDAP.

### [mod_sic](../modules/mod_sic.md)
Implements [XEP-0279: Server IP Check)](http://xmpp.org/extensions/xep-0279.html) that enables a client to discover its external IP address.

### [mod_stream_management](../modules/mod_stream_management.md)
Enables [XEP-0198: Stream Management](http://xmpp.org/extensions/xep-0198.html) functionality that defines active management of an XML stream between two XMPP entities, including features for stanza acknowledgements and stream resumption.

### [mod_vcard](../modules/mod_vcard.md)
Provides support for vCards, as specified in [XEP-0054: vcard-temp](http://xmpp.org/extensions/xep-0054.html) and [XEP-0055: Jabber Search](http://xmpp.org/extensions/xep-0055.html).

### [mod_websockets](../modules/mod_websockets.md)
Allows users to connect to MongooseIM using Websockets.
