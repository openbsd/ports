# $OpenBSD: Makefile,v 1.10 2007/06/22 14:26:06 jasper Exp $

COMMENT=		"SMTP plugin for MUAs"

DISTNAME=		msmtp-1.4.12
CATEGORIES=		mail

HOMEPAGE=		http://msmtp.sourceforge.net/

MAINTAINER=		Simon Kuhnle <simonkuhnle@web.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=msmtp/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		idn::devel/libidn

MODULES=		devel/gettext

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libgsasl=no \
			--with-libidn=yes \
			--with-ssl=openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/msmtp
	${INSTALL_DATA} ${WRKSRC}/doc/*.example ${PREFIX}/share/examples/msmtp
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/msmtp
	${INSTALL_DATA} ${WRKSRC}/doc/Mutt+msmtp.txt ${PREFIX}/share/doc/msmtp
	${INSTALL_DATA} ${WRKSRC}/doc/msmtp.html ${PREFIX}/share/doc/msmtp

.include <bsd.port.mk>
