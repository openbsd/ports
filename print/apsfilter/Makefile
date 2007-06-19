# $OpenBSD: Makefile,v 1.7 2007/06/19 10:44:40 kili Exp $

COMMENT=		"filter to print a wide range of file formats"

DISTNAME=		apsfilter-7.2.8
PKGNAME=		${DISTNAME}p0
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

RUN_DEPENDS=		::print/a2ps \
			::print/psutils

WRKDIST=		${WRKDIR}/apsfilter/

NO_REGRESS=		Yes

.include <bsd.port.mk>
