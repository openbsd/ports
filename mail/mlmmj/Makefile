# $OpenBSD: Makefile,v 1.10 2009/02/10 19:45:42 merdely Exp $

COMMENT=	mailing list manager

DISTNAME=	mlmmj-1.2.16
CATEGORIES=    	mail

HOMEPAGE=	http://mlmmj.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://mlmmj.mmj.dk/files/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-recieve-strip=yes

DOCS=	README.access README.exim4 README.security README.sendmail TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/recievestrip/README \
		${PREFIX}/share/doc/mlmmj/README.recieve-strip
	mv ${PREFIX}/bin/mlmmj-make-ml.sh ${PREFIX}/bin/mlmmj-make-ml
	mv ${PREFIX}/man/man1/mlmmj-make-ml.sh.1 \
		${PREFIX}/man/man1/mlmmj-make-ml.1
	sed -e 's/mlmmj-make-ml\.sh/mlmmj-make-ml/g' ${WRKSRC}/README > \
		${PREFIX}/share/doc/mlmmj/README

.include <bsd.port.mk>
