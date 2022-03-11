COMMENT=		uniform frontend to running Common Lisp code from the shell

DISTNAME=		cl-launch-4.1.3
CATEGORIES=		sysutils
REVISION =		0

HOMEPAGE=		http://cliki.net/cl-launch

# LLGPL (http://www.cliki.net/LLGPL)
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.sigtrap.nl/

WRKDIST=		${WRKDIR}/cl-launch.git

WANTLIB=		c

USE_GMAKE=		Yes

ALL_TARGET=		cl-shim

RUN_DEPENDS=		abcl-*|clisp-*|sbcl-*:lang/sbcl

.include <bsd.port.mk>
