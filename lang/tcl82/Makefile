# $OpenBSD: Makefile,v 1.6 2000/03/20 20:16:38 espie Exp $
# $FreeBSD: Makefile,v 1.26 2000/01/05 07:11:48 jseger Exp $

DISTNAME=	tcl8.2.3
PKGNAME=	tcl-8.2.3
CATEGORIES=	lang
NEED_VERSION=	1.191
MASTER_SITES=	${MASTER_SITE_TCLTK}
MASTER_SITE_SUBDIR= tcl8_2

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
FAKE=		Yes

.if (${MACHINE_ARCH} == "mips")
CONFIGURE_ARGS+= --disable-load
.endif
CONFIGURE_ENV=	PORTSDIR="${PORTSDIR}"

WRKDIST=	${WRKDIR}/${DISTNAME}/unix

# Sneaky
post-install:
	perl -pi.bak -e 's/\$$\{DESTDIR\}//;' ${PREFIX}/lib/tcl8.2/tclConfig.sh 

test:	build
	@cd ${WRKSRC} && make test

.include <bsd.port.mk>
