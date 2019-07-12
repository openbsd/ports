# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:33 sthen Exp $

COMMENT-main=	nagios service check acceptor
COMMENT-client=	nagios service check acceptor - client

VERSION=	2.9.1
REVISION-client=	1
REVISION-main=		2
DISTNAME=	nsca-${VERSION}
PKGNAME-main=	nsca-${VERSION}
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nagios/}

WANTLIB=		c mcrypt>=8
LIB_DEPENDS=		security/libmcrypt

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/nagios

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-nsca-user=_nagios \
			--with-nsca-grp=_nagios

MULTI_PACKAGES=		-main -client

TEST_DEPENDS=		devel/p5-Clone \
			devel/p5-Parallel-Forker
RUN_DEPENDS-main=	icinga-*|nagios-*:net/nagios/nagios

post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' src/nsca.c src/send_nsca.c

pre-build:
	@${SUBST_CMD} ${WRKSRC}/src/nsca.c ${WRKSRC}/src/send_nsca.c

do-test:
	@cd ${WRKSRC}/nsca_tests && ./runtests

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_PROGRAM} ${WRKSRC}/src/send_nsca ${PREFIX}/sbin/
	ln -s ${TRUEPREFIX}/sbin/send_nsca ${PREFIX}/libexec/nagios/
	${INSTALL_PROGRAM} ${WRKSRC}/src/nsca ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsca
	${INSTALL_DATA} ${WRKSRC}/sample-config/nsca.cfg \
		${PREFIX}/share/examples/nsca/
	${INSTALL_DATA} ${WRKSRC}/sample-config/send_nsca.cfg \
		${PREFIX}/share/examples/nsca/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsca
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nsca/
	${INSTALL_DATA} ${WRKSRC}/SECURITY ${PREFIX}/share/doc/nsca/

.include <bsd.port.mk>
