COMMENT-main=	nagios service check acceptor
COMMENT-client=	nagios service check acceptor - client

VERSION=	2.10.0
DISTNAME=	nsca-${VERSION}
PKGNAME-main=	nsca-${VERSION}
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=nagios/}

WANTLIB=		c mcrypt>=8
LIB_DEPENDS=		security/libmcrypt

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/nagios

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-nsca-user=_nagios \
			--with-nsca-grp=_nagios
CFLAGS+=		-DAI_V4MAPPED=0

MULTI_PACKAGES=		-main -client

RUN_DEPENDS-main=	icinga-*|nagios-*:net/nagios/nagios

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
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/nsca/
	${INSTALL_DATA} ${WRKSRC}/SECURITY.md ${PREFIX}/share/doc/nsca/

# Tests are broken; need old Perl
NO_TEST=	Yes
#TEST_DEPENDS=		devel/p5-Clone \
#			devel/p5-Parallel-Forker
#
#do-test:
#	@cd ${WRKSRC}/nsca_tests && ./runtests

.include <bsd.port.mk>
