# $OpenBSD: Makefile,v 1.3 2006/10/29 18:34:25 steven Exp $

COMMENT=	"DKIM milter"

DISTNAME=	dkim-milter-0.5.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
HOMEPAGE=	http://sourceforge.net/projects/dkim-milter/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dkim-milter/}

# sendmail open source license
PERMIT_PACKAGE_CDROM=		Patent
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Patent
PERMIT_DISTFILES_FTP=		Yes

WANTLIB=	c crypto pthread milter ssl

EXAMPLESDIR=	share/examples/dkim-milter

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/obj.*/dkim-filter/dkim-filter ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/dkim-filter/dkim-filter.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/dkim-filter.conf.sample ${PREFIX}/${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/dkim-filter/gentxt.csh ${PREFIX}/${EXAMPLESDIR}

.include <bsd.port.mk>
