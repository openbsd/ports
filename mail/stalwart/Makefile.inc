# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

# stalwart-jmap uses rocksdb, which is 64-bit only
# the other ports aren't especially useful without stalwart-jmap
ONLY_FOR_ARCHS =	${LP64_ARCHS}

GH_ACCOUNT =		stalwartlabs
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes
GH_TAGNAME ?=		v0.2.0
PKGNAME ?=		stalwart-${PKGPATH:S/mail\/stalwart\///}-${GH_TAGNAME:S/v//}

HOMEPAGE ?=	https://jmap.stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES +=		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS +=	security/rust-ring
