
GH_ACCOUNT =		stalwartlabs
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes
GH_TAGNAME ?=		v0.2.0
PKGNAME ?=		stalwart-${PKGPATH:S/mail\/stalwart\///}-${GH_TAGNAME:S/v//}

HOMEPAGE ?=	https://jmap.stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# crates ship with Cargo.toml.orig...
PATCHORIG =	.ports.orig
