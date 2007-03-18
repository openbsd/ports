# $OpenBSD: Makefile,v 1.1.1.1 2007/03/18 20:05:28 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	"distributed version control system by Canonical"

DISTNAME=	bzr-0.14
CATEGORIES=	devel

HOMEPAGE=	http://bazaar-vcs.org/

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}releases/src/

MODULES=	lang/python

RUN_DEPENDS=	::textproc/py-cElementTree \
		::textproc/gdiff
REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress:
	@cd ${WRKBUILD} && ./bzr selftest
 
.include <bsd.port.mk>
