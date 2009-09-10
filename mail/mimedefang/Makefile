# $OpenBSD: Makefile,v 1.11 2009/09/10 12:13:06 okan Exp $

COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-2.67
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

RUN_DEPENDS=	:p5-MIME-tools-*:mail/p5-MIME-tools \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1 \
		:p5-HTML-Parser-*:www/p5-HTML-Parser \
		:p5-Unix-Syslog-*:sysutils/p5-Unix-Syslog
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-user=_mdefang \
		--disable-anti-virus \
		--enable-poll

NO_REGRESS=	Yes

post-build:
	${SUBST_CMD} -c ${FILESDIR}/rc.mimedefang ${WRKSRC}/rc.mimedefang

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimedefang
	${INSTALL_DATA} ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${PREFIX}/share/examples/mimedefang/mimedefang-filter
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/sa-mimedefang.cf
	${INSTALL_SCRIPT} ${WRKSRC}/rc.mimedefang \
		${PREFIX}/share/examples/mimedefang/

.include <bsd.port.mk>
