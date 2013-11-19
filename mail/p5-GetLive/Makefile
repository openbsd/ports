# $OpenBSD: Makefile,v 1.15 2013/11/19 15:47:32 merdely Exp $

COMMENT=	automatically fetch outlook.com email

DISTNAME=	GetLive_3_0
PKGNAME=	p5-GetLive-3.0
PKG_ARCH=	*
CATEGORIES=	mail perl5
EXTRACT_SUFX=	.tgz

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=getlive/}

RUN_DEPENDS=	devel/p5-Net-Server \
		net/curl>=7.15.5 \
		mail/procmail \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-WWW-Mechanize-GZip \
		www/p5-libwww

NO_BUILD=	Yes
NO_TEST=	Yes

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
