# $OpenBSD: Makefile,v 1.15 2010/12/07 02:56:18 okan Exp $

COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-2.71
CATEGORIES=	mail

HOMEPAGE=	http://www.mimedefang.org/
MASTER_SITES=	${HOMEPAGE}static/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m perl pthread util milter

RUN_DEPENDS=	archivers/p5-Archive-Zip \
		mail/p5-MIME-tools \
		security/p5-Digest-SHA1 \
		www/p5-HTML-Parser \
		sysutils/p5-Unix-Syslog
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-user=_mdefang \
		--disable-anti-virus \
		--enable-poll

USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimedefang
	${INSTALL_DATA} ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${PREFIX}/share/examples/mimedefang/mimedefang-filter
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/sa-mimedefang.cf

.include <bsd.port.mk>
