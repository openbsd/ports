# $OpenBSD: Makefile,v 1.4 2007/09/05 20:28:44 sturm Exp $

COMMENT-main=	nagios service check acceptor
COMMENT-client=	nagios service check acceptor - client

VERSION=	2.7.2
DISTNAME=	nsca-${VERSION}
PKGNAME-main=	nsca-${VERSION}
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nagios/}

WANTLIB=		c
LIB_DEPENDS=		mcrypt.>=8::security/libmcrypt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-nsca-user=_nagios \
			--with-nsca-grp=_nagios \
			--localstatedir=/var/nagios

MULTI_PACKAGES=		-main -client

REGRESS_DEPENDS=	::devel/p5-Clone \
			::devel/p5-Parallel-Forker
RUN_DEPENDS-main=	:nagios-*:net/nagios/nagios

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
