# $OpenBSD: Makefile,v 1.2 2015/05/22 11:31:12 ajacoutot Exp $

COMMENT =		scriptable interfaces to interact with test programs
DISTNAME =		kyua-testers-0.2
REVISION =		0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/kyua

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c c

MASTER_SITES =		https://github.com/jmmv/kyua/releases/download/${DISTNAME}/

LIB_DEPENDS =		devel/atf

TEST_DEPENDS =		devel/kyua-cli

TEST_FLAGS =		KYUA=${LOCALBASE}/bin/kyua

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-doxygen

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
