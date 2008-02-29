# $OpenBSD: Makefile,v 1.22 2008/02/29 09:28:45 espie Exp $
# $FreeBSD: Makefile,v 1.16 1999/02/16 03:06:21 jseger Exp $

COMMENT=	programmable MUD client, with macro support and more

PKGNAME=	tinyfugue-4.0s1p3
DISTNAME=	tf-40s1
CATEGORIES=	net games

HOMEPAGE=	http://tinyfugue.sourceforge.net/

MAINTAINER=	Markus Lude <markus.lude@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m termcap z 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tinyfugue/} \
		ftp://ftp.demon.co.uk/pub/games/mud/

MASTER_SITES0=	http://inphobia.net/openbsd/patches/
PATCHFILES=	tf-40s1-mccp-20020717.patch.gz:0
PATCH_DIST_STRIP=	-p0

MAKE_ENV=	TFVER="${DISTNAME:S/^tf-//}" \
		CC="${CC}" TFDEV_CCFLAGS="${CFLAGS}"

MAKE_FILE=	${WRKSRC}/unix/Makefile

NO_REGRESS=	Yes

SYMLINKS=	kb-bash.tf,bind-bash.tf kb-emacs.tf,bind-emacs.tf \
		complete.tf,completion.tf factoral.tf,factorial.tf \
		filexfer.tf,file-xfer.tf local-eg.tf,local.tf.sample \
		psh.tf,pref-shell.tf spc-page.tf,space_page.tf \
		spedwalk.tf,speedwalk.tf stack-q.tf,stack_queue.tf \
		world-q.tf,worldqueue.tf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyfugue
	${INSTALL_PROGRAM} ${WRKBUILD}/src/tf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/tf.1.nroffman ${PREFIX}/man/man1/tf.1
	${INSTALL_DATA} ${WRKSRC}/tf-lib/* ${PREFIX}/share/tinyfugue
.for i in ${SYMLINKS}
	ln -s ${i:C/,.*//} ${PREFIX}/share/tinyfugue/${i:C/.*,//}
.endfor

.include <bsd.port.mk>
