# $OpenBSD: Makefile,v 1.40 2000/04/26 18:43:53 fgsch Exp $

DISTNAME=       fetchmail-5.3.8
CATEGORIES=	mail
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 
MAINTAINER=	fgsch@openbsd.org

FAKE=			YES

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+= --disable-nls
.if defined(WITH_KERBEROS) && ${WITH_KERBEROS:U} == YES
CONFIGURE_ARGS+= --with-kerberos
.endif
.if defined(WITH_SSL) && ${WITH_SSL:U} == YES
CONFIGURE_ARGS+= --with-ssl
.endif
.if defined(WITH_INET6) && ${WITH_INET6:U} == YES
CONFIGURE_ARGS+= --enable-inet6
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${PREFIX}/share/doc/fetchmail

.include <bsd.port.mk>
