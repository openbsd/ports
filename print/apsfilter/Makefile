# $OpenBSD: Makefile,v 1.1.1.1 2003/05/29 11:09:46 sturm Exp $

COMMENT=		"filter to print a wide range of file formats"

DISTNAME=		apsfilter-7.2.5
CATEGORIES=		print

HOMEPAGE=		http://www.apsfilter.org/

MAINTAINER=		Benjamin Lerman <benjamin.lerman@ambre.net>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.apsfilter.org/download/

CONFIGURE_STYLE=	gnu

RUN_DEPENDS=		::print/psutils \
			::print/a2ps

WRKDIST=		${WRKDIR}/apsfilter/

.include <bsd.port.mk>
