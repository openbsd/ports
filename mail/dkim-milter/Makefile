# $OpenBSD: Makefile,v 1.1.1.1 2006/07/31 15:40:22 jakob Exp $

COMMENT=	"DKIM milter"

DISTNAME=	dkim-milter-0.5.1
PKGNAME=	${DISTNAME}
CATEGORIES=	mail
HOMEPAGE=	http://sourceforge.net/projects/dkim-milter/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dkim-milter/}

# sendmail open source license
PERMIT_PACKAGE_CDROM=		Patent
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Patent
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c pthread milter

EXAMPLESDIR=	share/examples/dkim-milter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-filter ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-filter.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/dkim-filter.conf.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/gentxt.csh ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
