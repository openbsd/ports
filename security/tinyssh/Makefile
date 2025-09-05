COMMENT=	minimal SSH server implementation, run from inetd

# check bottom of DESCR and update with release type, etc, as needed
GH_ACCOUNT=	janmojzis
GH_PROJECT=	tinyssh
GH_TAGNAME=	20250501
REVISION=	0
DISTNAME=	tinyssh-0.0.${GH_TAGNAME}

CATEGORIES=	security net

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c util

DEBUG_PACKAGES=	${BUILD_PACKAGES}

FAKE_FLAGS=	DESTDIR=

post-install:
	mv ${PREFIX}/share/man/man8 ${PREFIX}/man/
	rmdir ${PREFIX}/share/man

.include <bsd.port.mk>
