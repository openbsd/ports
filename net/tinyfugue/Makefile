COMMENT=	programmable MUD client, with macro support and more

PKGNAME=	tinyfugue-4.0s1
REVISION=	7
DISTNAME=	tf-40s1
CATEGORIES=	net games

HOMEPAGE=	https://tinyfugue.sourceforge.net/

MAINTAINER=	Markus Lude <markus.lude@gmx.de>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m z

SITES=		${SITE_SOURCEFORGE:=tinyfugue/}

SITES.p=	http://inphobia.net/openbsd/patches/
PATCHFILES.p=	tf-40s1-mccp-20020717.patch.gz
PATCH_DIST_STRIP=	-p0

MAKE_ENV=	TFVER="${DISTNAME:S/^tf-//}" \
		CC="${CC}" TFDEV_CCFLAGS="${CFLAGS}"

MAKE_FILE=	${WRKSRC}/unix/Makefile

NO_TEST=	Yes

SYMLINKS=	kb-bash.tf bind-bash.tf \
		kb-emacs.tf bind-emacs.tf \
		complete.tf completion.tf \
		factoral.tf factorial.tf \
		filexfer.tf file-xfer.tf \
		local-eg.tf local.tf.sample \
		psh.tf pref-shell.tf \
		spc-page.tf space_page.tf \
		spedwalk.tf speedwalk.tf \
		stack-q.tf stack_queue.tf \
		world-q.tf worldqueue.tf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tinyfugue
	${INSTALL_PROGRAM} ${WRKBUILD}/src/tf ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/tf.1.nroffman ${PREFIX}/man/man1/tf.1
	${INSTALL_DATA} ${WRKSRC}/tf-lib/* ${PREFIX}/share/tinyfugue
.for source target in ${SYMLINKS}
	ln -s ${source} ${PREFIX}/share/tinyfugue/${target}
.endfor

.include <bsd.port.mk>
