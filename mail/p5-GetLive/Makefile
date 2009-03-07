# $OpenBSD: Makefile,v 1.6 2009/03/07 15:22:51 merdely Exp $

COMMENT=	automatically fetch hotmail.com email

DISTNAME=	GetLive_0_57
PKGNAME=	p5-GetLive-0.57p1
CATEGORIES=	mail perl5
EXTRACT_SUFX=	.tgz

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=getlive/}

RUN_DEPENDS=	:curl->=7.15.5:net/curl \
		::mail/procmail \
		::www/p5-URI

PKG_ARCH=	*

NO_BUILD=	Yes
NO_REGRESS=	Yes

post-patch:
	@${SUBST_CMD} ${WRKSRC}/{GetLive.pl,Manual}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/GetLive.pl ${PREFIX}/bin/GetLive
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/GetLive
	${INSTALL_SCRIPT} ${WRKSRC}/{SmtpAuthForward,SmtpForward}.pl \
		${PREFIX}/share/examples/GetLive/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/GetLive
	${INSTALL_DATA} ${WRKSRC}/{License,Manual} ${PREFIX}/share/doc/GetLive

.include <bsd.port.mk>
