# $OpenBSD: Makefile,v 1.25 2004/12/09 16:19:37 sturm Exp $

COMMENT=	"checkbook balancing tool"

DISTNAME=	cbb-0.73
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc
HOMEPAGE=	http://cbb.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

LIB_DEPENDS=	tk80.1.:tk->=8.0,<8.1:x11/tk/8.0
RUN_DEPENDS=	:plan-*:misc/plan

NO_BUILD=       Yes
NO_REGRESS=	Yes

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
