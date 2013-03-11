# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:49 espie Exp $

COMMENT-main=	nagios service check acceptor
COMMENT-client=	nagios service check acceptor - client

# packaged from Icinga git repo.
VERSION=	2.8pre20100831
DISTNAME=	icinga-nsca-${VERSION}
WRKDIST=	${WRKDIR}/icinga-nsca
PKGNAME-main=	nsca-${VERSION}
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net
REVISION=	2

HOMEPAGE=	http://www.nagios.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://spacehopper.org/mirrors/

WANTLIB=		c mcrypt>=8
LIB_DEPENDS=		security/libmcrypt

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/nagios

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-nsca-user=_nagios \
			--with-nsca-grp=_nagios

MULTI_PACKAGES=		-main -client

TEST_DEPENDS=	devel/p5-Clone \
			devel/p5-Parallel-Forker
RUN_DEPENDS-main=	net/nagios/nagios

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/src/nsca.c \
		${WRKSRC}/src/send_nsca.c

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
