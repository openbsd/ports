# $OpenBSD: Makefile,v 1.23 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"checkbook balancing tool"

DISTNAME=	cbb-0.73
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.me.umn.edu/pub/finance/ \
		ftp://ftp.fifi.org/pub/cbb/

LIB_DEPENDS=    tk80.1.::x11/tk/8.0
RUN_DEPENDS=	:tk-8.0.*:x11/tk/8.0 \
		:plan-*:misc/plan

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=       Yes
NO_REGRESS=	Yes

pre-configure:
	@mv ${WRKSRC}/install.pl ${WRKSRC}/install.pl.in
	@sed -e "s:/usr/local:${PREFIX}:"  -e "s:lib/cbb:share/cbb:" \
		${WRKSRC}/install.pl.in > ${WRKSRC}/install.pl

.include <bsd.port.mk>
