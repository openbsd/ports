# $OpenBSD: Makefile,v 1.46 2000/07/03 15:08:04 fgsch Exp $

DISTNAME=	fetchmail-5.4.3
CATEGORIES=	mail
NEED_VERSION=	1.308
MASTER_SITES=	http://www.tuxedo.org/~esr/fetchmail/ \
		ftp://ftp.ccil.org/pub/esr/fetchmail/ 

HOMEPAGE=	http://www.tuxedo.org/~esr/fetchmail/

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

FLAVORS=	kerberos ssl

FLAVOR?=
CONFIGURE_ARGS+= --disable-nls --enable-inet6
.if ${FLAVOR:L} == "kerberos"
CONFIGURE_ARGS+= --with-kerberos
.endif
.if ${FLAVOR:L} == "ssl"
CONFIGURE_ARGS+= --with-ssl
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	cd ${WRKSRC} && ${INSTALL_DATA} \
	   sample.rcfile FAQ NOTES FEATURES README COPYING \
	   fetchmail-FAQ.html fetchmail-features.html \
	   design-notes.html ${PREFIX}/share/doc/fetchmail

.include <bsd.port.mk>
