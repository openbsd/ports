#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: gnu.port.mk,v 1.6 2002/03/03 01:23:23 brad Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

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
