# $OpenBSD: Makefile,v 1.3 2006/11/26 01:06:53 espie Exp $

COMMENT-main=	"nagios service check acceptor"
COMMENT-client=	"nagios service check acceptor - client"

VERSION=	2.5
DISTNAME=	nsca-${VERSION}
PKGNAME-main=	nsca-${VERSION}p0
PKGNAME-client=	nsca-client-${VERSION}
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

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

NO_REGRESS=		Yes

MULTI_PACKAGES=		-main -client

RUN_DEPENDS-main=	:nagios-*:net/nagios/nagios

pre-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/src/nsca.c \
		${WRKSRC}/src/send_nsca.c

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
