# $OpenBSD: Makefile,v 1.4 2007/05/08 20:06:48 kurt Exp $

COMMENT=	"automatically fetch hotmail.com email"

DISTNAME=	gotmail-0.8.9
PKGNAME=	${DISTNAME}p1
CATEGORIES=	mail perl5

MAINTAINER=	Michael Erdely <mike@erdelynet.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gotmail/}

do-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/{Makefile,gotmail}

RUN_DEPENDS=	::mail/p5-Mail-SpamAssassin \
		::mail/procmail \
		::net/curl \
		::www/p5-URI

PKG_ARCH=	*

NO_REGRESS=	Yes

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/gotmail4evolution ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gotmail
	${INSTALL_DATA} ${WRKSRC}/sample.gotmailrc \
		${PREFIX}/share/examples/gotmail

.include <bsd.port.mk>
