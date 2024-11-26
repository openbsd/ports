CATEGORIES+=	net net/eduvpn
.if !defined(GH_ACCOUNT)
EXTRACT_SUFX?=	.tar.xz
# not DIST_TUPLE, these are proper uploads like github /releases/ URLs
#SITES?=		https://git.sr.ht/~fkooman/${DISTNAME:S/-$V//}/refs/download/$V/
_shortname=	${DISTNAME:S/-$V//}
SITES?=		https://codeberg.org/eduVPN/${_shortname}/releases/download/$V/
HOMEPAGE?=	https://codeberg.org/eduVPN/${_shortname}
PKGNAME?=	${DISTNAME:L}
.endif
HOMEPAGE?=	https://www.eduvpn.org/
