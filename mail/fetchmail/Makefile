# $OpenBSD: Makefile,v 1.43 2000/06/12 15:38:34 brad Exp $

DISTNAME=	fetchmail-5.4.1
CATEGORIES=	mail
NEED_VERSION=	1.301
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

HOMEPAGE=	http://www.tuxedo.org/~esr/fetchmail/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+= --disable-nls --enable-inet6
.if defined(WITH_KERBEROS) && ${WITH_KERBEROS:U} == YES
CONFIGURE_ARGS+= --with-kerberos
.endif
.if defined(WITH_SSL) && ${WITH_SSL:U} == YES
CONFIGURE_ARGS+= --with-ssl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${PREFIX}/share/doc/fetchmail

.include <bsd.port.mk>
