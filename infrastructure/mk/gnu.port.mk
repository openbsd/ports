#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: gnu.port.mk,v 1.8 2002/03/18 03:18:24 espie Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

NEED_VERSION+=1.513
AUTOCONF_NEW?=	No
.if ${CONFIGURE_STYLE:L:Mautomake}
BUILD_DEPENDS+=		::devel/automake
.endif
.if ${CONFIGURE_STYLE:L:Mautoupdate}
CONFIGURE_STYLE+=autoconf
.endif
.if ${CONFIGURE_STYLE:L:Mautoconf}
.  if ${AUTOCONF_NEW:L} == "yes"
BUILD_DEPENDS+=		::devel/autoconf-new
AUTOCONF?=			autoconf-new
AUTOUPDATE?=		autoupdate-new
AUTOHEADER?=		autoheader-new
MAKE_FLAGS+=		AUTOCONF='${AUTOCONF}' AUTOHEADER='${AUTOHEADER}'
FAKE_FLAGS+=		AUTOCONF='${AUTOCONF}' AUTOHEADER='${AUTOHEADER}'
.  else
AUTOCONF?=		autoconf
AUTOUPDATE?=	autoupdate
AUTOHEADER?=	autoheader
BUILD_DEPENDS+=		::devel/autoconf
.  endif
AUTOCONF_DIR?=${WRKSRC}
# missing ?= not an oversight
AUTOCONF_ENV=PATH=${PORTPATH}
.endif

MODGNU_CONFIG_GUESS_DIRS?=${WRKSRC}

MODGNU_configure =
.for _d in ${MODGNU_CONFIG_GUESS_DIRS}
MODGNU_configure += cp -f ${PORTSDIR}/infrastructure/db/config.guess ${_d};
MODGNU_configure += chmod a+rx ${_d}/config.guess;
MODGNU_configure += cp -f ${PORTSDIR}/infrastructure/db/config.sub ${_d};
MODGNU_configure += chmod a+rx ${_d}/config.sub;
.endfor
MODGNU_configure += ${MODSIMPLE_configure}

.if ${CONFIGURE_STYLE:L:Mdest}
CONFIGURE_ARGS+=	--prefix='$${${DESTDIRNAME}}${PREFIX}'
.else
CONFIGURE_ARGS+=	--prefix='${PREFIX}'
.endif

.if empty(CONFIGURE_STYLE:L:Mold)
.  if ${CONFIGURE_STYLE:L:Mdest}
CONFIGURE_ARGS+=	--sysconfdir='$${${DESTDIRNAME}}${SYSCONFDIR}'
.  else
CONFIGURE_ARGS+=	--sysconfdir='${SYSCONFDIR}'
.  endif
.endif

REGRESS_TARGET?=	check

.if ${PATCH_CHECK_ONLY:L} != "yes"
.  if ${CONFIGURE_STYLE:L:Mautoupdate}
MODGNU_post-patch+= cd ${AUTOCONF_DIR} && ${SETENV} ${AUTOCONF_ENV} ${AUTOUPDATE};
.  endif
.  if ${CONFIGURE_STYLE:L:Mautoconf}
MODGNU_post-patch+= cd ${AUTOCONF_DIR} && ${SETENV} ${AUTOCONF_ENV} ${AUTOCONF};
.  endif
.  if !${CONFIGURE_STYLE:L:Mautomake}
MODGNU_post-patch+= ln -s /usr/bin/false ${WRKDIR}/bin/automake;
MODGNU_post-patch+= ln -s /usr/bin/false ${WRKDIR}/bin/aclocal;
.  endif
.endif

