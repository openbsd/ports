# $OpenBSD: Makefile,v 1.24 2003/08/29 15:07:24 naddy Exp $

COMMENT=	"checkbook balancing tool"

DISTNAME=	cbb-0.73
CATEGORIES=	misc
HOMEPAGE=	http://cbb.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BACKUP}

LIB_DEPENDS=	tk80.1.::x11/tk/8.0
RUN_DEPENDS=	:tk-8.0.*:x11/tk/8.0 \
		:plan-*:misc/plan

NO_BUILD=       Yes
NO_REGRESS=	Yes

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
