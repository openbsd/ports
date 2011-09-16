# $OpenBSD: Makefile,v 1.8 2011/09/16 11:13:39 espie Exp $

COMMENT-main=	nagios service check acceptor
COMMENT-client=	nagios service check acceptor - client

# packaged from Icinga git repo.
VERSION=	2.8pre20100831
DISTNAME=	icinga-nsca-${VERSION}
WRKDIST=	${WRKDIR}/icinga-nsca
PKGNAME-main=	nsca-${VERSION}
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net
REVISION =	0

HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://spacehopper.org/mirrors/

WANTLIB=		c mcrypt>=8
LIB_DEPENDS=		security/libmcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-nsca-user=_nagios \
			--with-nsca-grp=_nagios \
			--localstatedir=/var/nagios

MULTI_PACKAGES=		-main -client

REGRESS_DEPENDS=	devel/p5-Clone \
			devel/p5-Parallel-Forker
RUN_DEPENDS-main=	net/nagios/nagios

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/src/nsca.c \
		${WRKSRC}/src/send_nsca.c

do-regress:
	@cd ${WRKSRC}/nsca_tests && ./runtests

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/nagios
	${INSTALL_PROGRAM} ${WRKSRC}/src/send_nsca ${PREFIX}/libexec/nagios/
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
