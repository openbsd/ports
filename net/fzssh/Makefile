COMMENT =	SSH/SFTP library based on libfilezilla

DISTNAME =	fzssh-1.3.0

SHARED_LIBS +=  fzssh-client	1.0
SHARED_LIBS +=  fzssh-crypt	0.0
SHARED_LIBS +=  fzssh		1.0

CATEGORIES =	net

HOMEPAGE =	https://fzssh.filezilla-project.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# AGPL3
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} argon2 filezilla gmp hogweed nettle

# XXX it seems that it is no longer possible to link directly to the distfile
#SITES =			https://download.filezilla-project.org/fzssh/
SITES =			https://arcfour.nl/mirror/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/meson

# C++20
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/gmp \
			net/libfilezilla>=0.55.3 \
			security/argon2 \
			security/nettle

CONFIGURE_STYLE =	meson

.include <bsd.port.mk>
