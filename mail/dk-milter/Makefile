# $OpenBSD: Makefile,v 1.3 2006/11/22 13:47:07 jakob Exp $

COMMENT=	"DomainKeys milter"

DISTNAME=	dk-milter-0.4.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail
HOMEPAGE=	http://sourceforge.net/projects/dk-milter/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dk-milter/}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# sendmail open source license
PERMIT_PACKAGE_CDROM=		Patent
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Patent
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c crypto pthread milter ssl

EXAMPLESDIR=	share/examples/dk-milter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dk-filter/dk-filter ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/dk-filter/dk-filter.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dk-filter/gentxt.csh ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
