# $OpenBSD: Makefile,v 1.1.1.1 2003/04/18 09:46:43 wilfried Exp $

COMMENT=		"asian font pack for acroread"

PKGNAME=		acrofonts-5.0
CATEGORIES=		print

HOMEPAGE=		http://www.adobe.com/products/acrobat/readstep.html

MAINTAINER=		Yozo TODA <yozo@v007.vaio.ne.jp>

PERMIT_PACKAGE_CDROM=	"commercial software"
PERMIT_PACKAGE_FTP=	"commercial software"
PERMIT_DISTFILES_CDROM= "commercial software"
PERMIT_DISTFILES_FTP=	"Adobe are control freaks"

MASTER_SITES=		ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/5.x/ \
			ftp://ftp.adobe.com/pub/adobe/acrobatreader/unix/5.x/
DISTFILES=		chsfont.tar.gz chtfont.tar.gz \
			jpnfont.tar.gz korfont.tar.gz

DIST_SUBDIR=		acrofonts

RUN_DEPENDS=		:acroread->=5:print/acroread

NO_BUILD=		Yes

DIR=${PREFIX}/Acrobat5/Resource/Font

do-install:
	${INSTALL_DATA_DIR} ${DIR}
	${INSTALL_DATA} ${WRKDIR}/CHSKIT/LICFONT.TXT ${DIR}
	cd ${WRKDIR}; \
	for f in */*.TAR; \
	do tar -x -C ${DIR} -f $${f} ; \
	done

.include <bsd.port.mk>
