# $OpenBSD: Makefile,v 1.12 2011/03/14 09:17:01 sthen Exp $

COMMENT=		filter to print a wide range of file formats

DISTNAME=		apsfilter-7.2.8
REVISION=		1
CATEGORIES=		print

HOMEPAGE=		http://www.apsfilter.org/

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.apsfilter.org/download/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-shell=/bin/sh \
			--with-awk=/usr/bin/awk
USE_GROFF =		Yes

RUN_DEPENDS=		print/a2ps \
			print/psutils

WRKDIST=		${WRKDIR}/apsfilter/

NO_REGRESS=		Yes

.include <bsd.port.mk>
