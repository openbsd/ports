# $OpenBSD: Makefile,v 1.26 2003/01/13 08:48:14 jakob Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-4.04
CATEGORIES=	security

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://stunnel.mirt.net/

MASTER_SITES=	ftp://stunnel.mirt.net/stunnel/ \
		http://www.stunnel.org/download/stunnel/src/ \
		http://mike.daewoo.com.pl/computer/stunnel/ \
		http://opensores.thebunker.net/pub/mirrors/stunnel/ \
		ftp://ftp.fu-berlin.de/unix/security/stunnel/ \
		ftp://ftp.uni-freiburg.de/pub/net/stunnel/ \
		ftp://ftp.all.de/pub2/unix/security/stunnel/

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-tcp-wrappers \
			--with-pem-dir=${SYSCONFDIR}/ssl \
			--with-random=/dev/arandom \
			--with-ssl=/usr \
			--localstatedir=/var
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/stunnel.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stunnel
	${INSTALL_DATA} ${WRKBUILD}/tools/stunnel.conf-sample \
		${PREFIX}/share/examples/stunnel

.include <bsd.port.mk>
