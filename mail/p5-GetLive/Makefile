# $OpenBSD: Makefile,v 1.12 2011/06/02 13:41:39 ajacoutot Exp $

COMMENT=	automatically fetch hotmail.com email

DISTNAME=	GetLive_2_3
PKGNAME=	p5-GetLive-2.3
PKG_ARCH=	*
CATEGORIES=	mail perl5
EXTRACT_SUFX=	.tgz
REVISION=	0

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=getlive/}

RUN_DEPENDS=	devel/p5-Net-Server \
		net/curl>=7.15.5 \
		mail/procmail \
		www/p5-URI

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
