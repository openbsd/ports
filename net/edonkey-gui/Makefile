# $OpenBSD: Makefile,v 1.2 2002/12/29 21:14:11 fgsch Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"gui for edonkey"
DISTNAME=		ed2k_linux_gui_0.1alpha
PKGNAME=		edonkey-gui-0.1
CATEGORIES=		net x11

HOMEPAGE=		http://users.aber.ac.uk/tpm01/guihome.html

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

PERMIT_PACKAGE_CDROM=	"No License"
PERMIT_PACKAGE_FTP=	"No License"
PERMIT_DISTFILES_CDROM=	"No License"
PERMIT_DISTFILES_FTP=	"No License"

MASTER_SITES=		http://www.student.euv-frankfurt-o.de/~euv80809/donkey/files/

NO_BUILD=		Yes
NO_REGRESS=		Yes

BUILD_DEPENDS=		:redhat_base->=6.2*:emulators/redhat/base
# Needs some linux libraries like gtk
RUN_DEPENDS=		:redhat_base->=6.2*:emulators/redhat/base
STRIPCMD=		/emul/linux/usr/bin/strip

WRKSRC=			${WRKDIR}/linux_gui_alpha

do-install:
	cd ${WRKBUILD} && STRIP=${STRIPCMD} ${INSTALL_PROGRAM} ed2k_gui ${PREFIX}/bin/ed2k_gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/edonkey-gui
	${INSTALL_DATA} ${FILESDIR}/faq.html ${PREFIX}/share/doc/edonkey-gui

.include <bsd.port.mk>
