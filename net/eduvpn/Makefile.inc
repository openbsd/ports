CATEGORIES+=	net net/eduvpn
.if !defined(GH_ACCOUNT)
EXTRACT_SUFX?=	.tar.xz
MASTER_SITES?=	https://git.sr.ht/~fkooman/${DISTNAME:S/-$V//}/refs/download/$V/
HOMEPAGE?=	https://git.sr.ht/~fkooman/${DISTNAME:S/-$V//}
PKGNAME?=	${DISTNAME:L}
.endif
HOMEPAGE?=	https://www.eduvpn.org/
