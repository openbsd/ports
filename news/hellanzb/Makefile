# $OpenBSD: Makefile,v 1.1.1.1 2007/06/24 16:57:40 jasper Exp $

COMMENT=		retrieve and process nzb-files

DISTNAME=		hellanzb-0.13
CATEGORIES=		news

HOMEPAGE=		http://www.hellanzb.com/trac/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.hellanzb.com/distfiles/

MODULES=		lang/python

RUN_DEPENDS=		::archivers/par2cmdline \
			::archivers/unrar \
			::devel/py-twisted/core \
			::devel/py-twisted/web

NO_REGRESS=		Yes

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},' \
		${WRKSRC}/Hellanzb/Core.py

.include <bsd.port.mk>
