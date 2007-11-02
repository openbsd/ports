# $OpenBSD: Makefile,v 1.7 2007/11/02 22:40:03 sthen Exp $

COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-2.63
CATEGORIES=	mail

HOMEPAGE=	http://www.mimedefang.org/

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c m perl pthread util milter

MASTER_SITES=	${HOMEPAGE}static/

RUN_DEPENDS=	:p5-MIME-tools-*:mail/p5-MIME-tools \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1 \
		:p5-HTML-Parser-*:www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-user=_mdefang \
		--disable-anti-virus

NO_REGRESS=	Yes

post-build:
	@sed -e 's,%LOCALBASE%,${LOCALBASE},g' < ${FILESDIR}/rc.mimedefang \
		> ${WRKSRC}/rc.mimedefang

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimedefang
	${INSTALL_DATA} ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${PREFIX}/share/examples/mimedefang/mimedefang-filter
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/sa-mimedefang.cf
	${INSTALL_SCRIPT} ${WRKSRC}/rc.mimedefang \
		${PREFIX}/share/examples/mimedefang/

.include <bsd.port.mk>
