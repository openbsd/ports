# $OpenBSD: Makefile,v 1.23 2002/10/28 17:30:52 naddy Exp $

COMMENT=	SSL encryption wrapper for standard network daemons

DISTNAME=	stunnel-3.22
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

BUILD_DEPENDS=  ::textproc/p5-sdf

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-tcp-wrappers \
			--with-pem-dir=${SYSCONFDIR}/ssl \
			--with-random=/dev/arandom
ALL_TARGET=		stunnel stunnel.8
REGRESS_TARGET=		test
REGRESS_IS_INTERACTIVE=	Yes

post-configure:
	rm ${WRKSRC}/stunnel.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stunnel ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/stunnel.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
