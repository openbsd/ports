# $OpenBSD: Makefile,v 1.5 2008/10/10 13:45:02 jasper Exp $

COMMENT=		asian font pack for acroread

PKGNAME=		acrofonts-7.0
CATEGORIES=		print

HOMEPAGE=		http://www.adobe.com/products/acrobat/readstep.html

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	commercial software
PERMIT_PACKAGE_FTP=	commercial software
PERMIT_DISTFILES_CDROM= commercial software
PERMIT_DISTFILES_FTP=	Adobe are control freaks

MASTER_SITES=		http://download.adobe.com/pub/adobe/acrobatreader/unix/5.x/
DISTFILES=		chsfont.tar.gz chtfont.tar.gz \
			jpnfont.tar.gz korfont.tar.gz

DIST_SUBDIR=		acrofonts

RUN_DEPENDS=		:acroread->=7:print/acroread

NO_BUILD=		Yes

DIR=${PREFIX}/Acrobat7/Resource/CMap

do-install:
	${INSTALL_DATA_DIR} ${DIR}
	${INSTALL_DATA} ${WRKDIR}/CHSKIT/LICFONT.TXT ${DIR}
	cd ${WRKDIR}; \
	for f in */*.TAR; \
	do tar -x -C ${DIR} -f $${f} ; \
	done

.include <bsd.port.mk>
