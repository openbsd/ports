# $OpenBSD: Makefile,v 1.1.1.1 2003/01/20 17:15:57 sturm Exp $
COMMENT=	"wireless access point configuration tools"

DISTNAME=	ap-utils-1.3
CATEGORIES=	net

HOMEPAGE=	http://ap-utils.polesye.net/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ap-utils.uk.polesye.net/files/ \
		http://web.cs.cmu.edu/~dpelleg/download/ \
		http://ap-utils.polesye.net/files/
EXTRACT_SUFX=	.tar.bz2

MODULES=	gettext iconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=	--without-included-gettext \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-libintl-prefix=${LOCALBASE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/systrace/
	${INSTALL_DATA} files/bin_ap_config ${PREFIX}/share/examples/systrace/

.include <bsd.port.mk>
